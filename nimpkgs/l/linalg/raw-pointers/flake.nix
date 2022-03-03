{
  description = ''Linear algebra for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-linalg-raw-pointers.flake = false;
  inputs.src-linalg-raw-pointers.type = "github";
  inputs.src-linalg-raw-pointers.owner = "andreaferretti";
  inputs.src-linalg-raw-pointers.repo = "linear-algebra";
  inputs.src-linalg-raw-pointers.ref = "refs/tags/raw-pointers";
  inputs.src-linalg-raw-pointers.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-linalg-raw-pointers, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-linalg-raw-pointers;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-linalg-raw-pointers"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}