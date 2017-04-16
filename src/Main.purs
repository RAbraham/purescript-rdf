module Main where

import Prelude (Unit, show)
import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Console (CONSOLE, log)
import Data.RDF (addRajiv)

eswcCommitteeURI :: String
eswcCommitteeURI = "http://data.semanticweb.org/conference/eswc/2015/program-committee-member"

heldByProp :: String
heldByProp = "swc:heldBy"

-- | returns a list of full names of people who served as
--   members on the ESWC 2015 conference programme committee.
-- eswcCommitteeMembers :: RDF TList -> List String
-- eswcCommitteeMembers graph =
--   let triples = query graph (Just (unode eswcCommitteeURI)) (Just (unode heldByProp)) Nothing
--       memberURIs = map objectOf triples
--   in map
--      (\memberURI ->
--               let (LNode (PlainL (firstName::T.Text))) =
--                     objectOf $ head $ query graph (Just memberURI) (Just (unode "foaf:firstName")) Nothing
--                   (LNode (PlainL lastName))  =
--                     objectOf $ head $ query graph (Just memberURI) (Just (unode "foaf:lastName")) Nothing
--               in (T.append firstName (T.append (T.pack  " ") lastName)))
--      memberURIs

main :: forall e. Eff (console :: CONSOLE | e) Unit
main = do
  log (show (addRajiv 5 5))


-- import Data.RDF
-- import qualified Data.Text as T

-- eswcCommitteeURI, heldByProp :: T.Text
-- eswcCommitteeURI = "http://data.semanticweb.org/conference/eswc/2015/program-committee-member"
-- heldByProp       = "swc:heldBy"

-- -- | returns a list of full names of people who served as
-- --   members on the ESWC 2015 conference programme committee.
-- eswcCommitteeMembers :: RDF TList -> [T.Text]
-- eswcCommitteeMembers graph =
--   let triples = query graph (Just (unode eswcCommitteeURI)) (Just (unode heldByProp)) Nothing
--       memberURIs = map objectOf triples
--   in map
--      (\memberURI ->
--               let (LNode (PlainL (firstName::T.Text))) =
--                     objectOf $ head $ query graph (Just memberURI) (Just (unode "foaf:firstName")) Nothing
--                   (LNode (PlainL lastName))  =
--                     objectOf $ head $ query graph (Just memberURI) (Just (unode "foaf:lastName")) Nothing
--               in (T.append firstName (T.append (T.pack  " ") lastName)))
--      memberURIs
        
-- main :: IO ()
-- main = do
--   result <- parseURL
--     (XmlParser Nothing Nothing)
--     "http://data.semanticweb.org/dumps/conferences/eswc-2015-complete.rdf"
--   case result of
--     Left err -> error "Unable to parse RDF content from that URL"
--     Right rdfGraph -> do
--       let eswcMemberNames = eswcCommitteeMembers rdfGraph
--       mapM_ (putStrLn . T.unpack) eswcMemberNames
