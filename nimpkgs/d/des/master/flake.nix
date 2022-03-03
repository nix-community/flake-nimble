{
  description = ''3DES native library for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-des-master.flake = false;
  inputs.src-des-master.type = "github";
  inputs.src-des-master.owner = "LucaWolf";
  inputs.src-des-master.repo = "des.nim";
  inputs.src-des-master.ref = "refs/heads/master";
  inputs.src-des-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-des-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-des-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-des-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}