{
  description = ''A simple wrapper providing a convenient reentrant interface for the bcrypt password hashing algorithm.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-easy_bcrypt-master.flake = false;
  inputs.src-easy_bcrypt-master.type = "github";
  inputs.src-easy_bcrypt-master.owner = "Akito13";
  inputs.src-easy_bcrypt-master.repo = "easy-bcrypt";
  inputs.src-easy_bcrypt-master.ref = "refs/heads/master";
  inputs.src-easy_bcrypt-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-easy_bcrypt-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-easy_bcrypt-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-easy_bcrypt-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}