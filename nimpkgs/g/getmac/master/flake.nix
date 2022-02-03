{
  description = ''A package to get the MAC address of a local IP address'';
  inputs.src-getmac-master.flake = false;
  inputs.src-getmac-master.type = "github";
  inputs.src-getmac-master.owner = "PMunch";
  inputs.src-getmac-master.repo = "getmac";
  inputs.src-getmac-master.ref = "refs/heads/master";
  
  
  inputs."optionsutils".url = "path:../../../o/optionsutils";
  inputs."optionsutils".type = "github";
  inputs."optionsutils".owner = "riinr";
  inputs."optionsutils".repo = "flake-nimble";
  inputs."optionsutils".ref = "flake-pinning";
  inputs."optionsutils".dir = "nimpkgs/o/optionsutils";

  outputs = { self, nixpkgs, src-getmac-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-getmac-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-getmac-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}