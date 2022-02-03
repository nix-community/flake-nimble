{
  description = ''A port of mdbook to nim'';
  inputs.src-nimibook-v0_2_1.flake = false;
  inputs.src-nimibook-v0_2_1.type = "github";
  inputs.src-nimibook-v0_2_1.owner = "pietroppeter";
  inputs.src-nimibook-v0_2_1.repo = "nimibook";
  inputs.src-nimibook-v0_2_1.ref = "refs/tags/v0.2.1";
  
  
  inputs."nimib".url = "path:../../../n/nimib";
  inputs."nimib".type = "github";
  inputs."nimib".owner = "riinr";
  inputs."nimib".repo = "flake-nimble";
  inputs."nimib".ref = "flake-pinning";
  inputs."nimib".dir = "nimpkgs/n/nimib";

  
  inputs."jsony".url = "path:../../../j/jsony";
  inputs."jsony".type = "github";
  inputs."jsony".owner = "riinr";
  inputs."jsony".repo = "flake-nimble";
  inputs."jsony".ref = "flake-pinning";
  inputs."jsony".dir = "nimpkgs/j/jsony";

  outputs = { self, nixpkgs, src-nimibook-v0_2_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimibook-v0_2_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimibook-v0_2_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}