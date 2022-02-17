{
  description = ''Master Password command line utility'';
  inputs.src-mpwc-master.flake = false;
  inputs.src-mpwc-master.type = "github";
  inputs.src-mpwc-master.owner = "SolitudeSF";
  inputs.src-mpwc-master.repo = "mpwc";
  inputs.src-mpwc-master.ref = "refs/heads/master";
  
  
  inputs."masterpassword".type = "github";
  inputs."masterpassword".owner = "riinr";
  inputs."masterpassword".repo = "flake-nimble";
  inputs."masterpassword".ref = "flake-pinning";
  inputs."masterpassword".dir = "nimpkgs/m/masterpassword";

  
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  outputs = { self, nixpkgs, src-mpwc-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-mpwc-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-mpwc-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}