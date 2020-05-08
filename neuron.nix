let
  pkgs = import <nixpkgs> {};
  src = pkgs.fetchFromGitHub {
    owner = "srid";
    repo = "neuron";
    rev = "0d6cb05fc7a6a4a2badbb764ea02693386a29ba2";
    sha256 = "1qdapc9qnyc0psn0fw39b7cdai3spbcqcqbw8mgc6qx0fz2vwch7";
  };
in import src.outPath { gitRev = src.rev; }
