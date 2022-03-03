{
  description = ''Updated version of tor.nim from https://github.com/FedericoCeratto/nim-tor'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-torim-master.flake = false;
  inputs.src-torim-master.type = "github";
  inputs.src-torim-master.owner = "KittyTechnoProgrammer";
  inputs.src-torim-master.repo = "torim";
  inputs.src-torim-master.ref = "refs/heads/master";
  inputs.src-torim-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-torim-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-torim-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-torim-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}