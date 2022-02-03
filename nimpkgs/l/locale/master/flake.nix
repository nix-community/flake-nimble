{
  description = ''A simple library for localizing Nim applications.'';
  inputs.src-locale-master.flake = false;
  inputs.src-locale-master.type = "github";
  inputs.src-locale-master.owner = "Amrykid";
  inputs.src-locale-master.repo = "nim-locale";
  inputs.src-locale-master.ref = "refs/heads/master";
  
  
  inputs."nimrod".url = "path:../../../n/nimrod";
  inputs."nimrod".type = "github";
  inputs."nimrod".owner = "riinr";
  inputs."nimrod".repo = "flake-nimble";
  inputs."nimrod".ref = "flake-pinning";
  inputs."nimrod".dir = "nimpkgs/n/nimrod";

  outputs = { self, nixpkgs, src-locale-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-locale-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-locale-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}