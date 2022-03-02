{
  description = ''making Nim development easier in the command-line'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-rodcli-master.flake = false;
  inputs.src-rodcli-master.type = "github";
  inputs.src-rodcli-master.owner = "jabbalaci";
  inputs.src-rodcli-master.repo = "NimCliHelper";
  inputs.src-rodcli-master.ref = "refs/heads/master";
  inputs.src-rodcli-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-rodcli-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-rodcli-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-rodcli-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}