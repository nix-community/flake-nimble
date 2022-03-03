{
  description = ''Wrapper for libsvm.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-libsvm_legacy-master.flake = false;
  inputs.src-libsvm_legacy-master.type = "github";
  inputs.src-libsvm_legacy-master.owner = "nim-lang";
  inputs.src-libsvm_legacy-master.repo = "libsvm_legacy";
  inputs.src-libsvm_legacy-master.ref = "refs/heads/master";
  inputs.src-libsvm_legacy-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-libsvm_legacy-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-libsvm_legacy-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-libsvm_legacy-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}