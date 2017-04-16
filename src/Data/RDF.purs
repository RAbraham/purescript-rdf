module Data.RDF where

import Prelude
addRajiv :: Int -> Int -> Int
addRajiv x y = x + y


-- Rajiv Start 
-- We have an RDF Store. This could be in memory or a database. We need a query language DSL(SPARQL, Turtle).
-- We pass the Query to a Engine. It could be an in memory engine or a database engine. We pass the query and it returns back the triples/quadruples that satisfy the query.
-- Rajiv End
---------------------------------------------------------------------------------------------------------------
-- -- |The Core module exports all serializers and parsers,
-- --  types, and query functions of the library.

-- module Data.RDF (

--   Rdf(..),
--   RdfSerializer(..),
--   RdfParser(..),

--   -- * RDF types and query functions
--   module Data.RDF.Types,
--   module Data.RDF.Query,

--   -- * RDF type class instances
--   module Data.RDF.Graph.TList,
--   module Data.RDF.Graph.AdjHashMap,
--   -- module Data.RDF.Graph.HashMapSP,
--   -- module Data.RDF.Graph.MapSP,

--   -- * RDF parsers and serializers
--   module Text.RDF.RDF4H.NTriplesSerializer,
--   module Text.RDF.RDF4H.NTriplesParser,
--   module Text.RDF.RDF4H.TurtleSerializer,
--   module Text.RDF.RDF4H.TurtleParser,
--   module Text.RDF.RDF4H.XmlParser,
-- )
-- where

-- import Data.RDF.Namespace
-- import Data.RDF.Graph.TList
-- import Data.RDF.Graph.AdjHashMap
-- -- import Data.RDF.Graph.HashMapSP
-- -- import Data.RDF.Graph.MapSP
-- import Text.RDF.RDF4H.NTriplesSerializer
-- import Text.RDF.RDF4H.TurtleSerializer
-- import Text.RDF.RDF4H.NTriplesParser
-- import Text.RDF.RDF4H.TurtleParser
-- import Text.RDF.RDF4H.XmlParser
-- import Data.RDF.Types
-- import Data.RDF.Query
