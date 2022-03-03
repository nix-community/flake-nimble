{
  description = ''A simple wrapper providing a convenient reentrant interface for the bcrypt password hashing algorithm.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-easy_bcrypt-2_0_3.flake = false;
  inputs.src-easy_bcrypt-2_0_3.type = "github";
  inputs.src-easy_bcrypt-2_0_3.owner = "Akito13";
  inputs.src-easy_bcrypt-2_0_3.repo = "easy-bcrypt";
  inputs.src-easy_bcrypt-2_0_3.ref = "refs/tags/2.0.3";
  inputs.src-easy_bcrypt-2_0_3.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-easy_bcrypt-2_0_3, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-easy_bcrypt-2_0_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-easy_bcrypt-2_0_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}