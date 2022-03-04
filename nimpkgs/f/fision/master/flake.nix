{
  description = ''important_packages with 0 dependencies and all unittests passing'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-fision-master.flake = false;
  inputs.src-fision-master.type = "github";
  inputs.src-fision-master.owner = "juancarlospaco";
  inputs.src-fision-master.repo = "fision";
  inputs.src-fision-master.ref = "refs/heads/master";
  inputs.src-fision-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."argparse".type = "github";
  inputs."argparse".owner = "riinr";
  inputs."argparse".repo = "flake-nimble";
  inputs."argparse".ref = "flake-pinning";
  inputs."argparse".dir = "nimpkgs/a/argparse";
  inputs."argparse".inputs.nixpkgs.follows = "nixpkgs";
  inputs."argparse".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."arraymancer".type = "github";
  inputs."arraymancer".owner = "riinr";
  inputs."arraymancer".repo = "flake-nimble";
  inputs."arraymancer".ref = "flake-pinning";
  inputs."arraymancer".dir = "nimpkgs/a/arraymancer";
  inputs."arraymancer".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arraymancer".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."asyncthreadpool".type = "github";
  inputs."asyncthreadpool".owner = "riinr";
  inputs."asyncthreadpool".repo = "flake-nimble";
  inputs."asyncthreadpool".ref = "flake-pinning";
  inputs."asyncthreadpool".dir = "nimpkgs/a/asyncthreadpool";
  inputs."asyncthreadpool".inputs.nixpkgs.follows = "nixpkgs";
  inputs."asyncthreadpool".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."awk".type = "github";
  inputs."awk".owner = "riinr";
  inputs."awk".repo = "flake-nimble";
  inputs."awk".ref = "flake-pinning";
  inputs."awk".dir = "nimpkgs/a/awk";
  inputs."awk".inputs.nixpkgs.follows = "nixpkgs";
  inputs."awk".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."binaryheap".type = "github";
  inputs."binaryheap".owner = "riinr";
  inputs."binaryheap".repo = "flake-nimble";
  inputs."binaryheap".ref = "flake-pinning";
  inputs."binaryheap".dir = "nimpkgs/b/binaryheap";
  inputs."binaryheap".inputs.nixpkgs.follows = "nixpkgs";
  inputs."binaryheap".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."bipbuffer".type = "github";
  inputs."bipbuffer".owner = "riinr";
  inputs."bipbuffer".repo = "flake-nimble";
  inputs."bipbuffer".ref = "flake-pinning";
  inputs."bipbuffer".dir = "nimpkgs/b/bipbuffer";
  inputs."bipbuffer".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bipbuffer".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."bncurve".type = "github";
  inputs."bncurve".owner = "riinr";
  inputs."bncurve".repo = "flake-nimble";
  inputs."bncurve".ref = "flake-pinning";
  inputs."bncurve".dir = "nimpkgs/b/bncurve";
  inputs."bncurve".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bncurve".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."brainfuck".type = "github";
  inputs."brainfuck".owner = "riinr";
  inputs."brainfuck".repo = "flake-nimble";
  inputs."brainfuck".ref = "flake-pinning";
  inputs."brainfuck".dir = "nimpkgs/b/brainfuck";
  inputs."brainfuck".inputs.nixpkgs.follows = "nixpkgs";
  inputs."brainfuck".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."bump".type = "github";
  inputs."bump".owner = "riinr";
  inputs."bump".repo = "flake-nimble";
  inputs."bump".ref = "flake-pinning";
  inputs."bump".dir = "nimpkgs/b/bump";
  inputs."bump".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."c2nim".type = "github";
  inputs."c2nim".owner = "riinr";
  inputs."c2nim".repo = "flake-nimble";
  inputs."c2nim".ref = "flake-pinning";
  inputs."c2nim".dir = "nimpkgs/c/c2nim";
  inputs."c2nim".inputs.nixpkgs.follows = "nixpkgs";
  inputs."c2nim".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."cascade".type = "github";
  inputs."cascade".owner = "riinr";
  inputs."cascade".repo = "flake-nimble";
  inputs."cascade".ref = "flake-pinning";
  inputs."cascade".dir = "nimpkgs/c/cascade";
  inputs."cascade".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cascade".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."cello".type = "github";
  inputs."cello".owner = "riinr";
  inputs."cello".repo = "flake-nimble";
  inputs."cello".ref = "flake-pinning";
  inputs."cello".dir = "nimpkgs/c/cello";
  inputs."cello".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cello".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."chroma".type = "github";
  inputs."chroma".owner = "riinr";
  inputs."chroma".repo = "flake-nimble";
  inputs."chroma".ref = "flake-pinning";
  inputs."chroma".dir = "nimpkgs/c/chroma";
  inputs."chroma".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chroma".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."chronicles".type = "github";
  inputs."chronicles".owner = "riinr";
  inputs."chronicles".repo = "flake-nimble";
  inputs."chronicles".ref = "flake-pinning";
  inputs."chronicles".dir = "nimpkgs/c/chronicles";
  inputs."chronicles".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chronicles".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."chronos".type = "github";
  inputs."chronos".owner = "riinr";
  inputs."chronos".repo = "flake-nimble";
  inputs."chronos".ref = "flake-pinning";
  inputs."chronos".dir = "nimpkgs/c/chronos";
  inputs."chronos".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chronos".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";
  inputs."cligen".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."combparser".type = "github";
  inputs."combparser".owner = "riinr";
  inputs."combparser".repo = "flake-nimble";
  inputs."combparser".ref = "flake-pinning";
  inputs."combparser".dir = "nimpkgs/c/combparser";
  inputs."combparser".inputs.nixpkgs.follows = "nixpkgs";
  inputs."combparser".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."compactdict".type = "github";
  inputs."compactdict".owner = "riinr";
  inputs."compactdict".repo = "flake-nimble";
  inputs."compactdict".ref = "flake-pinning";
  inputs."compactdict".dir = "nimpkgs/c/compactdict";
  inputs."compactdict".inputs.nixpkgs.follows = "nixpkgs";
  inputs."compactdict".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."dashing".type = "github";
  inputs."dashing".owner = "riinr";
  inputs."dashing".repo = "flake-nimble";
  inputs."dashing".ref = "flake-pinning";
  inputs."dashing".dir = "nimpkgs/d/dashing";
  inputs."dashing".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dashing".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."datamancer".type = "github";
  inputs."datamancer".owner = "riinr";
  inputs."datamancer".repo = "flake-nimble";
  inputs."datamancer".ref = "flake-pinning";
  inputs."datamancer".dir = "nimpkgs/d/datamancer";
  inputs."datamancer".inputs.nixpkgs.follows = "nixpkgs";
  inputs."datamancer".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."delaunay".type = "github";
  inputs."delaunay".owner = "riinr";
  inputs."delaunay".repo = "flake-nimble";
  inputs."delaunay".ref = "flake-pinning";
  inputs."delaunay".dir = "nimpkgs/d/delaunay";
  inputs."delaunay".inputs.nixpkgs.follows = "nixpkgs";
  inputs."delaunay".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."docopt".type = "github";
  inputs."docopt".owner = "riinr";
  inputs."docopt".repo = "flake-nimble";
  inputs."docopt".ref = "flake-pinning";
  inputs."docopt".dir = "nimpkgs/d/docopt";
  inputs."docopt".inputs.nixpkgs.follows = "nixpkgs";
  inputs."docopt".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."easygl".type = "github";
  inputs."easygl".owner = "riinr";
  inputs."easygl".repo = "flake-nimble";
  inputs."easygl".ref = "flake-pinning";
  inputs."easygl".dir = "nimpkgs/e/easygl";
  inputs."easygl".inputs.nixpkgs.follows = "nixpkgs";
  inputs."easygl".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."elvis".type = "github";
  inputs."elvis".owner = "riinr";
  inputs."elvis".repo = "flake-nimble";
  inputs."elvis".ref = "flake-pinning";
  inputs."elvis".dir = "nimpkgs/e/elvis";
  inputs."elvis".inputs.nixpkgs.follows = "nixpkgs";
  inputs."elvis".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."fidget".type = "github";
  inputs."fidget".owner = "riinr";
  inputs."fidget".repo = "flake-nimble";
  inputs."fidget".ref = "flake-pinning";
  inputs."fidget".dir = "nimpkgs/f/fidget";
  inputs."fidget".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fidget".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."fusion".type = "github";
  inputs."fusion".owner = "riinr";
  inputs."fusion".repo = "flake-nimble";
  inputs."fusion".ref = "flake-pinning";
  inputs."fusion".dir = "nimpkgs/f/fusion";
  inputs."fusion".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fusion".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."gara".type = "github";
  inputs."gara".owner = "riinr";
  inputs."gara".repo = "flake-nimble";
  inputs."gara".ref = "flake-pinning";
  inputs."gara".dir = "nimpkgs/g/gara";
  inputs."gara".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gara".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."ggplotnim".type = "github";
  inputs."ggplotnim".owner = "riinr";
  inputs."ggplotnim".repo = "flake-nimble";
  inputs."ggplotnim".ref = "flake-pinning";
  inputs."ggplotnim".dir = "nimpkgs/g/ggplotnim";
  inputs."ggplotnim".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."glob".type = "github";
  inputs."glob".owner = "riinr";
  inputs."glob".repo = "flake-nimble";
  inputs."glob".ref = "flake-pinning";
  inputs."glob".dir = "nimpkgs/g/glob";
  inputs."glob".inputs.nixpkgs.follows = "nixpkgs";
  inputs."glob".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."gnuplot".type = "github";
  inputs."gnuplot".owner = "riinr";
  inputs."gnuplot".repo = "flake-nimble";
  inputs."gnuplot".ref = "flake-pinning";
  inputs."gnuplot".dir = "nimpkgs/g/gnuplot";
  inputs."gnuplot".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gnuplot".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."hts".type = "github";
  inputs."hts".owner = "riinr";
  inputs."hts".repo = "flake-nimble";
  inputs."hts".ref = "flake-pinning";
  inputs."hts".dir = "nimpkgs/h/hts";
  inputs."hts".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hts".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."httpauth".type = "github";
  inputs."httpauth".owner = "riinr";
  inputs."httpauth".repo = "flake-nimble";
  inputs."httpauth".ref = "flake-pinning";
  inputs."httpauth".dir = "nimpkgs/h/httpauth";
  inputs."httpauth".inputs.nixpkgs.follows = "nixpkgs";
  inputs."httpauth".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."illwill".type = "github";
  inputs."illwill".owner = "riinr";
  inputs."illwill".repo = "flake-nimble";
  inputs."illwill".ref = "flake-pinning";
  inputs."illwill".dir = "nimpkgs/i/illwill";
  inputs."illwill".inputs.nixpkgs.follows = "nixpkgs";
  inputs."illwill".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."inim".type = "github";
  inputs."inim".owner = "riinr";
  inputs."inim".repo = "flake-nimble";
  inputs."inim".ref = "flake-pinning";
  inputs."inim".dir = "nimpkgs/i/inim";
  inputs."inim".inputs.nixpkgs.follows = "nixpkgs";
  inputs."inim".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."itertools".type = "github";
  inputs."itertools".owner = "riinr";
  inputs."itertools".repo = "flake-nimble";
  inputs."itertools".ref = "flake-pinning";
  inputs."itertools".dir = "nimpkgs/i/itertools";
  inputs."itertools".inputs.nixpkgs.follows = "nixpkgs";
  inputs."itertools".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."iterutils".type = "github";
  inputs."iterutils".owner = "riinr";
  inputs."iterutils".repo = "flake-nimble";
  inputs."iterutils".ref = "flake-pinning";
  inputs."iterutils".dir = "nimpkgs/i/iterutils";
  inputs."iterutils".inputs.nixpkgs.follows = "nixpkgs";
  inputs."iterutils".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."jstin".type = "github";
  inputs."jstin".owner = "riinr";
  inputs."jstin".repo = "flake-nimble";
  inputs."jstin".ref = "flake-pinning";
  inputs."jstin".dir = "nimpkgs/j/jstin";
  inputs."jstin".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jstin".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."karax".type = "github";
  inputs."karax".owner = "riinr";
  inputs."karax".repo = "flake-nimble";
  inputs."karax".ref = "flake-pinning";
  inputs."karax".dir = "nimpkgs/k/karax";
  inputs."karax".inputs.nixpkgs.follows = "nixpkgs";
  inputs."karax".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."lockfreequeues".type = "github";
  inputs."lockfreequeues".owner = "riinr";
  inputs."lockfreequeues".repo = "flake-nimble";
  inputs."lockfreequeues".ref = "flake-pinning";
  inputs."lockfreequeues".dir = "nimpkgs/l/lockfreequeues";
  inputs."lockfreequeues".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lockfreequeues".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."loopfusion".type = "github";
  inputs."loopfusion".owner = "riinr";
  inputs."loopfusion".repo = "flake-nimble";
  inputs."loopfusion".ref = "flake-pinning";
  inputs."loopfusion".dir = "nimpkgs/l/loopfusion";
  inputs."loopfusion".inputs.nixpkgs.follows = "nixpkgs";
  inputs."loopfusion".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."macroutils".type = "github";
  inputs."macroutils".owner = "riinr";
  inputs."macroutils".repo = "flake-nimble";
  inputs."macroutils".ref = "flake-pinning";
  inputs."macroutils".dir = "nimpkgs/m/macroutils";
  inputs."macroutils".inputs.nixpkgs.follows = "nixpkgs";
  inputs."macroutils".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."manu".type = "github";
  inputs."manu".owner = "riinr";
  inputs."manu".repo = "flake-nimble";
  inputs."manu".ref = "flake-pinning";
  inputs."manu".dir = "nimpkgs/m/manu";
  inputs."manu".inputs.nixpkgs.follows = "nixpkgs";
  inputs."manu".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."markdown".type = "github";
  inputs."markdown".owner = "riinr";
  inputs."markdown".repo = "flake-nimble";
  inputs."markdown".ref = "flake-pinning";
  inputs."markdown".dir = "nimpkgs/m/markdown";
  inputs."markdown".inputs.nixpkgs.follows = "nixpkgs";
  inputs."markdown".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."memo".type = "github";
  inputs."memo".owner = "riinr";
  inputs."memo".repo = "flake-nimble";
  inputs."memo".ref = "flake-pinning";
  inputs."memo".dir = "nimpkgs/m/memo";
  inputs."memo".inputs.nixpkgs.follows = "nixpkgs";
  inputs."memo".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."msgpack4nim".type = "github";
  inputs."msgpack4nim".owner = "riinr";
  inputs."msgpack4nim".repo = "flake-nimble";
  inputs."msgpack4nim".ref = "flake-pinning";
  inputs."msgpack4nim".dir = "nimpkgs/m/msgpack4nim";
  inputs."msgpack4nim".inputs.nixpkgs.follows = "nixpkgs";
  inputs."msgpack4nim".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."nake".type = "github";
  inputs."nake".owner = "riinr";
  inputs."nake".repo = "flake-nimble";
  inputs."nake".ref = "flake-pinning";
  inputs."nake".dir = "nimpkgs/n/nake";
  inputs."nake".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nake".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."neo".type = "github";
  inputs."neo".owner = "riinr";
  inputs."neo".repo = "flake-nimble";
  inputs."neo".ref = "flake-pinning";
  inputs."neo".dir = "nimpkgs/n/neo";
  inputs."neo".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neo".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."nesm".type = "github";
  inputs."nesm".owner = "riinr";
  inputs."nesm".repo = "flake-nimble";
  inputs."nesm".ref = "flake-pinning";
  inputs."nesm".dir = "nimpkgs/n/nesm";
  inputs."nesm".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nesm".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."netty".type = "github";
  inputs."netty".owner = "riinr";
  inputs."netty".repo = "flake-nimble";
  inputs."netty".ref = "flake-pinning";
  inputs."netty".dir = "nimpkgs/n/netty";
  inputs."netty".inputs.nixpkgs.follows = "nixpkgs";
  inputs."netty".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."nicy".type = "github";
  inputs."nicy".owner = "riinr";
  inputs."nicy".repo = "flake-nimble";
  inputs."nicy".ref = "flake-pinning";
  inputs."nicy".dir = "nimpkgs/n/nicy";
  inputs."nicy".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nicy".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."nigui".type = "github";
  inputs."nigui".owner = "riinr";
  inputs."nigui".repo = "flake-nimble";
  inputs."nigui".ref = "flake-pinning";
  inputs."nigui".dir = "nimpkgs/n/nigui";
  inputs."nigui".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nigui".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."nimcrypto".type = "github";
  inputs."nimcrypto".owner = "riinr";
  inputs."nimcrypto".repo = "flake-nimble";
  inputs."nimcrypto".ref = "flake-pinning";
  inputs."nimcrypto".dir = "nimpkgs/n/nimcrypto";
  inputs."nimcrypto".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcrypto".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."nimdata".type = "github";
  inputs."nimdata".owner = "riinr";
  inputs."nimdata".repo = "flake-nimble";
  inputs."nimdata".ref = "flake-pinning";
  inputs."nimdata".dir = "nimpkgs/n/nimdata";
  inputs."nimdata".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimdata".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."nimes".type = "github";
  inputs."nimes".owner = "riinr";
  inputs."nimes".repo = "flake-nimble";
  inputs."nimes".ref = "flake-pinning";
  inputs."nimes".dir = "nimpkgs/n/nimes";
  inputs."nimes".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimes".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."nimfp".type = "github";
  inputs."nimfp".owner = "riinr";
  inputs."nimfp".repo = "flake-nimble";
  inputs."nimfp".ref = "flake-pinning";
  inputs."nimfp".dir = "nimpkgs/n/nimfp";
  inputs."nimfp".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfp".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."nimgame2".type = "github";
  inputs."nimgame2".owner = "riinr";
  inputs."nimgame2".repo = "flake-nimble";
  inputs."nimgame2".ref = "flake-pinning";
  inputs."nimgame2".dir = "nimpkgs/n/nimgame2";
  inputs."nimgame2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgame2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."nimgen".type = "github";
  inputs."nimgen".owner = "riinr";
  inputs."nimgen".repo = "flake-nimble";
  inputs."nimgen".ref = "flake-pinning";
  inputs."nimgen".dir = "nimpkgs/n/nimgen";
  inputs."nimgen".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."nimlsp".type = "github";
  inputs."nimlsp".owner = "riinr";
  inputs."nimlsp".repo = "flake-nimble";
  inputs."nimlsp".ref = "flake-pinning";
  inputs."nimlsp".dir = "nimpkgs/n/nimlsp";
  inputs."nimlsp".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimlsp".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."nimly".type = "github";
  inputs."nimly".owner = "riinr";
  inputs."nimly".repo = "flake-nimble";
  inputs."nimly".ref = "flake-pinning";
  inputs."nimly".dir = "nimpkgs/n/nimly";
  inputs."nimly".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimly".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."nimpy".type = "github";
  inputs."nimpy".owner = "riinr";
  inputs."nimpy".repo = "flake-nimble";
  inputs."nimpy".ref = "flake-pinning";
  inputs."nimpy".dir = "nimpkgs/n/nimpy";
  inputs."nimpy".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimpy".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."nimquery".type = "github";
  inputs."nimquery".owner = "riinr";
  inputs."nimquery".repo = "flake-nimble";
  inputs."nimquery".ref = "flake-pinning";
  inputs."nimquery".dir = "nimpkgs/n/nimquery";
  inputs."nimquery".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimquery".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."nimsl".type = "github";
  inputs."nimsl".owner = "riinr";
  inputs."nimsl".repo = "flake-nimble";
  inputs."nimsl".ref = "flake-pinning";
  inputs."nimsl".dir = "nimpkgs/n/nimsl";
  inputs."nimsl".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimsl".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."nimsvg".type = "github";
  inputs."nimsvg".owner = "riinr";
  inputs."nimsvg".repo = "flake-nimble";
  inputs."nimsvg".ref = "flake-pinning";
  inputs."nimsvg".dir = "nimpkgs/n/nimsvg";
  inputs."nimsvg".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimsvg".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."nimterop".type = "github";
  inputs."nimterop".owner = "riinr";
  inputs."nimterop".repo = "flake-nimble";
  inputs."nimterop".ref = "flake-pinning";
  inputs."nimterop".dir = "nimpkgs/n/nimterop";
  inputs."nimterop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimterop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."nimwc".type = "github";
  inputs."nimwc".owner = "riinr";
  inputs."nimwc".repo = "flake-nimble";
  inputs."nimwc".ref = "flake-pinning";
  inputs."nimwc".dir = "nimpkgs/n/nimwc";
  inputs."nimwc".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimwc".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."nitter".type = "github";
  inputs."nitter".owner = "riinr";
  inputs."nitter".repo = "flake-nimble";
  inputs."nitter".ref = "flake-pinning";
  inputs."nitter".dir = "nimpkgs/n/nitter";
  inputs."nitter".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nitter".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."norm".type = "github";
  inputs."norm".owner = "riinr";
  inputs."norm".repo = "flake-nimble";
  inputs."norm".ref = "flake-pinning";
  inputs."norm".dir = "nimpkgs/n/norm";
  inputs."norm".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norm".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."npeg".type = "github";
  inputs."npeg".owner = "riinr";
  inputs."npeg".repo = "flake-nimble";
  inputs."npeg".ref = "flake-pinning";
  inputs."npeg".dir = "nimpkgs/n/npeg";
  inputs."npeg".inputs.nixpkgs.follows = "nixpkgs";
  inputs."npeg".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."numericalnim".type = "github";
  inputs."numericalnim".owner = "riinr";
  inputs."numericalnim".repo = "flake-nimble";
  inputs."numericalnim".ref = "flake-pinning";
  inputs."numericalnim".dir = "nimpkgs/n/numericalnim";
  inputs."numericalnim".inputs.nixpkgs.follows = "nixpkgs";
  inputs."numericalnim".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."optionsutils".type = "github";
  inputs."optionsutils".owner = "riinr";
  inputs."optionsutils".repo = "flake-nimble";
  inputs."optionsutils".ref = "flake-pinning";
  inputs."optionsutils".dir = "nimpkgs/o/optionsutils";
  inputs."optionsutils".inputs.nixpkgs.follows = "nixpkgs";
  inputs."optionsutils".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."ormin".type = "github";
  inputs."ormin".owner = "riinr";
  inputs."ormin".repo = "flake-nimble";
  inputs."ormin".ref = "flake-pinning";
  inputs."ormin".dir = "nimpkgs/o/ormin";
  inputs."ormin".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ormin".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."parsetoml".type = "github";
  inputs."parsetoml".owner = "riinr";
  inputs."parsetoml".repo = "flake-nimble";
  inputs."parsetoml".ref = "flake-pinning";
  inputs."parsetoml".dir = "nimpkgs/p/parsetoml";
  inputs."parsetoml".inputs.nixpkgs.follows = "nixpkgs";
  inputs."parsetoml".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."patty".type = "github";
  inputs."patty".owner = "riinr";
  inputs."patty".repo = "flake-nimble";
  inputs."patty".ref = "flake-pinning";
  inputs."patty".dir = "nimpkgs/p/patty";
  inputs."patty".inputs.nixpkgs.follows = "nixpkgs";
  inputs."patty".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."pixie".type = "github";
  inputs."pixie".owner = "riinr";
  inputs."pixie".repo = "flake-nimble";
  inputs."pixie".ref = "flake-pinning";
  inputs."pixie".dir = "nimpkgs/p/pixie";
  inputs."pixie".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pixie".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."plotly".type = "github";
  inputs."plotly".owner = "riinr";
  inputs."plotly".repo = "flake-nimble";
  inputs."plotly".ref = "flake-pinning";
  inputs."plotly".dir = "nimpkgs/p/plotly";
  inputs."plotly".inputs.nixpkgs.follows = "nixpkgs";
  inputs."plotly".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."pnm".type = "github";
  inputs."pnm".owner = "riinr";
  inputs."pnm".repo = "flake-nimble";
  inputs."pnm".ref = "flake-pinning";
  inputs."pnm".dir = "nimpkgs/p/pnm";
  inputs."pnm".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pnm".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."polypbren".type = "github";
  inputs."polypbren".owner = "riinr";
  inputs."polypbren".repo = "flake-nimble";
  inputs."polypbren".ref = "flake-pinning";
  inputs."polypbren".dir = "nimpkgs/p/polypbren";
  inputs."polypbren".inputs.nixpkgs.follows = "nixpkgs";
  inputs."polypbren".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."prologue".type = "github";
  inputs."prologue".owner = "riinr";
  inputs."prologue".repo = "flake-nimble";
  inputs."prologue".ref = "flake-pinning";
  inputs."prologue".dir = "nimpkgs/p/prologue";
  inputs."prologue".inputs.nixpkgs.follows = "nixpkgs";
  inputs."prologue".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."protobuf".type = "github";
  inputs."protobuf".owner = "riinr";
  inputs."protobuf".repo = "flake-nimble";
  inputs."protobuf".ref = "flake-pinning";
  inputs."protobuf".dir = "nimpkgs/p/protobuf";
  inputs."protobuf".inputs.nixpkgs.follows = "nixpkgs";
  inputs."protobuf".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."pylib".type = "github";
  inputs."pylib".owner = "riinr";
  inputs."pylib".repo = "flake-nimble";
  inputs."pylib".ref = "flake-pinning";
  inputs."pylib".dir = "nimpkgs/p/pylib";
  inputs."pylib".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pylib".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."rbtree".type = "github";
  inputs."rbtree".owner = "riinr";
  inputs."rbtree".repo = "flake-nimble";
  inputs."rbtree".ref = "flake-pinning";
  inputs."rbtree".dir = "nimpkgs/r/rbtree";
  inputs."rbtree".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rbtree".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."react".type = "github";
  inputs."react".owner = "riinr";
  inputs."react".repo = "flake-nimble";
  inputs."react".ref = "flake-pinning";
  inputs."react".dir = "nimpkgs/r/react";
  inputs."react".inputs.nixpkgs.follows = "nixpkgs";
  inputs."react".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."regex".type = "github";
  inputs."regex".owner = "riinr";
  inputs."regex".repo = "flake-nimble";
  inputs."regex".ref = "flake-pinning";
  inputs."regex".dir = "nimpkgs/r/regex";
  inputs."regex".inputs.nixpkgs.follows = "nixpkgs";
  inputs."regex".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."result".type = "github";
  inputs."result".owner = "riinr";
  inputs."result".repo = "flake-nimble";
  inputs."result".ref = "flake-pinning";
  inputs."result".dir = "nimpkgs/r/result";
  inputs."result".inputs.nixpkgs.follows = "nixpkgs";
  inputs."result".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."rollinghash".type = "github";
  inputs."rollinghash".owner = "riinr";
  inputs."rollinghash".repo = "flake-nimble";
  inputs."rollinghash".ref = "flake-pinning";
  inputs."rollinghash".dir = "nimpkgs/r/rollinghash";
  inputs."rollinghash".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rollinghash".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."rosencrantz".type = "github";
  inputs."rosencrantz".owner = "riinr";
  inputs."rosencrantz".repo = "flake-nimble";
  inputs."rosencrantz".ref = "flake-pinning";
  inputs."rosencrantz".dir = "nimpkgs/r/rosencrantz";
  inputs."rosencrantz".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rosencrantz".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."sdl1".type = "github";
  inputs."sdl1".owner = "riinr";
  inputs."sdl1".repo = "flake-nimble";
  inputs."sdl1".ref = "flake-pinning";
  inputs."sdl1".dir = "nimpkgs/s/sdl1";
  inputs."sdl1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sdl1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."sdl2_nim".type = "github";
  inputs."sdl2_nim".owner = "riinr";
  inputs."sdl2_nim".repo = "flake-nimble";
  inputs."sdl2_nim".ref = "flake-pinning";
  inputs."sdl2_nim".dir = "nimpkgs/s/sdl2_nim";
  inputs."sdl2_nim".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sdl2_nim".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."sigv4".type = "github";
  inputs."sigv4".owner = "riinr";
  inputs."sigv4".repo = "flake-nimble";
  inputs."sigv4".ref = "flake-pinning";
  inputs."sigv4".dir = "nimpkgs/s/sigv4";
  inputs."sigv4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sigv4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."sim".type = "github";
  inputs."sim".owner = "riinr";
  inputs."sim".repo = "flake-nimble";
  inputs."sim".ref = "flake-pinning";
  inputs."sim".dir = "nimpkgs/s/sim";
  inputs."sim".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sim".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."stint".type = "github";
  inputs."stint".owner = "riinr";
  inputs."stint".repo = "flake-nimble";
  inputs."stint".ref = "flake-pinning";
  inputs."stint".dir = "nimpkgs/s/stint";
  inputs."stint".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stint".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."strslice".type = "github";
  inputs."strslice".owner = "riinr";
  inputs."strslice".repo = "flake-nimble";
  inputs."strslice".ref = "flake-pinning";
  inputs."strslice".dir = "nimpkgs/s/strslice";
  inputs."strslice".inputs.nixpkgs.follows = "nixpkgs";
  inputs."strslice".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."strunicode".type = "github";
  inputs."strunicode".owner = "riinr";
  inputs."strunicode".repo = "flake-nimble";
  inputs."strunicode".ref = "flake-pinning";
  inputs."strunicode".dir = "nimpkgs/s/strunicode";
  inputs."strunicode".inputs.nixpkgs.follows = "nixpkgs";
  inputs."strunicode".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."supersnappy".type = "github";
  inputs."supersnappy".owner = "riinr";
  inputs."supersnappy".repo = "flake-nimble";
  inputs."supersnappy".ref = "flake-pinning";
  inputs."supersnappy".dir = "nimpkgs/s/supersnappy";
  inputs."supersnappy".inputs.nixpkgs.follows = "nixpkgs";
  inputs."supersnappy".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."synthesis".type = "github";
  inputs."synthesis".owner = "riinr";
  inputs."synthesis".repo = "flake-nimble";
  inputs."synthesis".ref = "flake-pinning";
  inputs."synthesis".dir = "nimpkgs/s/synthesis";
  inputs."synthesis".inputs.nixpkgs.follows = "nixpkgs";
  inputs."synthesis".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."telebot".type = "github";
  inputs."telebot".owner = "riinr";
  inputs."telebot".repo = "flake-nimble";
  inputs."telebot".ref = "flake-pinning";
  inputs."telebot".dir = "nimpkgs/t/telebot";
  inputs."telebot".inputs.nixpkgs.follows = "nixpkgs";
  inputs."telebot".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."tempdir".type = "github";
  inputs."tempdir".owner = "riinr";
  inputs."tempdir".repo = "flake-nimble";
  inputs."tempdir".ref = "flake-pinning";
  inputs."tempdir".dir = "nimpkgs/t/tempdir";
  inputs."tempdir".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tempdir".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."templates".type = "github";
  inputs."templates".owner = "riinr";
  inputs."templates".repo = "flake-nimble";
  inputs."templates".ref = "flake-pinning";
  inputs."templates".dir = "nimpkgs/t/templates";
  inputs."templates".inputs.nixpkgs.follows = "nixpkgs";
  inputs."templates".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."terminaltables".type = "github";
  inputs."terminaltables".owner = "riinr";
  inputs."terminaltables".repo = "flake-nimble";
  inputs."terminaltables".ref = "flake-pinning";
  inputs."terminaltables".dir = "nimpkgs/t/terminaltables";
  inputs."terminaltables".inputs.nixpkgs.follows = "nixpkgs";
  inputs."terminaltables".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."termstyle".type = "github";
  inputs."termstyle".owner = "riinr";
  inputs."termstyle".repo = "flake-nimble";
  inputs."termstyle".ref = "flake-pinning";
  inputs."termstyle".dir = "nimpkgs/t/termstyle";
  inputs."termstyle".inputs.nixpkgs.follows = "nixpkgs";
  inputs."termstyle".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."timeit".type = "github";
  inputs."timeit".owner = "riinr";
  inputs."timeit".repo = "flake-nimble";
  inputs."timeit".ref = "flake-pinning";
  inputs."timeit".dir = "nimpkgs/t/timeit";
  inputs."timeit".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timeit".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."timezones".type = "github";
  inputs."timezones".owner = "riinr";
  inputs."timezones".repo = "flake-nimble";
  inputs."timezones".ref = "flake-pinning";
  inputs."timezones".dir = "nimpkgs/t/timezones";
  inputs."timezones".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timezones".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."tiny_sqlite".type = "github";
  inputs."tiny_sqlite".owner = "riinr";
  inputs."tiny_sqlite".repo = "flake-nimble";
  inputs."tiny_sqlite".ref = "flake-pinning";
  inputs."tiny_sqlite".dir = "nimpkgs/t/tiny_sqlite";
  inputs."tiny_sqlite".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tiny_sqlite".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."unicodedb".type = "github";
  inputs."unicodedb".owner = "riinr";
  inputs."unicodedb".repo = "flake-nimble";
  inputs."unicodedb".ref = "flake-pinning";
  inputs."unicodedb".dir = "nimpkgs/u/unicodedb";
  inputs."unicodedb".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unicodedb".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."unicodeplus".type = "github";
  inputs."unicodeplus".owner = "riinr";
  inputs."unicodeplus".repo = "flake-nimble";
  inputs."unicodeplus".ref = "flake-pinning";
  inputs."unicodeplus".dir = "nimpkgs/u/unicodeplus";
  inputs."unicodeplus".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unicodeplus".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."unpack".type = "github";
  inputs."unpack".owner = "riinr";
  inputs."unpack".repo = "flake-nimble";
  inputs."unpack".ref = "flake-pinning";
  inputs."unpack".dir = "nimpkgs/u/unpack";
  inputs."unpack".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unpack".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."weave".type = "github";
  inputs."weave".owner = "riinr";
  inputs."weave".repo = "flake-nimble";
  inputs."weave".ref = "flake-pinning";
  inputs."weave".dir = "nimpkgs/w/weave";
  inputs."weave".inputs.nixpkgs.follows = "nixpkgs";
  inputs."weave".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."websocket".type = "github";
  inputs."websocket".owner = "riinr";
  inputs."websocket".repo = "flake-nimble";
  inputs."websocket".ref = "flake-pinning";
  inputs."websocket".dir = "nimpkgs/w/websocket";
  inputs."websocket".inputs.nixpkgs.follows = "nixpkgs";
  inputs."websocket".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."winim".type = "github";
  inputs."winim".owner = "riinr";
  inputs."winim".repo = "flake-nimble";
  inputs."winim".ref = "flake-pinning";
  inputs."winim".dir = "nimpkgs/w/winim";
  inputs."winim".inputs.nixpkgs.follows = "nixpkgs";
  inputs."winim".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."yaml".type = "github";
  inputs."yaml".owner = "riinr";
  inputs."yaml".repo = "flake-nimble";
  inputs."yaml".ref = "flake-pinning";
  inputs."yaml".dir = "nimpkgs/y/yaml";
  inputs."yaml".inputs.nixpkgs.follows = "nixpkgs";
  inputs."yaml".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."zero_functional".type = "github";
  inputs."zero_functional".owner = "riinr";
  inputs."zero_functional".repo = "flake-nimble";
  inputs."zero_functional".ref = "flake-pinning";
  inputs."zero_functional".dir = "nimpkgs/z/zero_functional";
  inputs."zero_functional".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zero_functional".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."zippy".type = "github";
  inputs."zippy".owner = "riinr";
  inputs."zippy".repo = "flake-nimble";
  inputs."zippy".ref = "flake-pinning";
  inputs."zippy".dir = "nimpkgs/z/zippy";
  inputs."zippy".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-fision-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-fision-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-fision-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}