import Control.Monad
import System.Directory
import System.FilePath
import System.IO
import qualified Data.ByteString.Char8 as SB

-- adds 'private:' as default visibility to every classes
-- does not contain '(' or contains ':'
cond ws = let l = unwords ws in elem ':' l || notElem '(' l

fix (("class":ws1):("{":ws2):ls) | cond ws1 = ("class":ws1):("{ private:":ws2):fix ls
fix (("ATTRIBUTE_ALIGNED16(class)":ws1):("{":ws2):ls) | cond ws1 = ("ATTRIBUTE_ALIGNED16(class)":ws1):("{ private:":ws2):fix ls
fix (l:ls) = l:fix ls
fix [] = []

fixFile n = do
    print n
    inFile <- openFile n ReadMode
    src' <- SB.hGetContents inFile
    let src = seq src' src'
        dst = "bullet/" ++ n
    hClose inFile
    createDirectoryIfMissing True $ takeDirectory dst
    writeFile dst $ unlines $ map unwords $ fix $ [words l | l <- lines $ SB.unpack src]

fixDir n = do
    l <- getDirectoryContents n
    forM_ l $ \i -> do
        let sn = n ++ "/" ++ i
        dir <- doesDirectoryExist sn
        case dir of
            True    -> when (notElem i [".",".."]) $ fixDir sn
            False   -> when (takeExtension i == ".h") $ fixFile sn

main = fixDir "."
