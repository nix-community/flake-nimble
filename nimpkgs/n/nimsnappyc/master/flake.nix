{
  description = ''Wrapper for the Snappy-C compression library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nimsnappyc-master.flake = false;
  inputs.src-nimsnappyc-master.type = "github";
  inputs.src-nimsnappyc-master.owner = "NimCompression";
  inputs.src-nimsnappyc-master.repo = "nimsnappyc";
  inputs.src-nimsnappyc-master.ref = "refs/heads/master";
  inputs.src-nimsnappyc-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimsnappyc-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimsnappyc-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimsnappyc-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}