{
  description = ''Tor helper library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-tor-master.flake = false;
  inputs.src-tor-master.type = "github";
  inputs.src-tor-master.owner = "FedericoCeratto";
  inputs.src-tor-master.repo = "nim-tor";
  inputs.src-tor-master.ref = "refs/heads/master";
  inputs.src-tor-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-tor-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-tor-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-tor-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}