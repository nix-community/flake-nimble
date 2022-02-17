{
  description = ''A port of mdbook to nim'';
  inputs.src-nimibook-main.flake = false;
  inputs.src-nimibook-main.type = "github";
  inputs.src-nimibook-main.owner = "pietroppeter";
  inputs.src-nimibook-main.repo = "nimibook";
  inputs.src-nimibook-main.ref = "refs/heads/main";
  
  
  inputs."nimib".type = "github";
  inputs."nimib".owner = "riinr";
  inputs."nimib".repo = "flake-nimble";
  inputs."nimib".ref = "flake-pinning";
  inputs."nimib".dir = "nimpkgs/n/nimib";

  
  inputs."jsony".type = "github";
  inputs."jsony".owner = "riinr";
  inputs."jsony".repo = "flake-nimble";
  inputs."jsony".ref = "flake-pinning";
  inputs."jsony".dir = "nimpkgs/j/jsony";

  outputs = { self, nixpkgs, src-nimibook-main, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimibook-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimibook-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}