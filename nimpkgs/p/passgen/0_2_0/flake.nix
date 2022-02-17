{
  description = ''Password generation library in Nim'';
  inputs.src-passgen-0_2_0.flake = false;
  inputs.src-passgen-0_2_0.type = "github";
  inputs.src-passgen-0_2_0.owner = "rustomax";
  inputs.src-passgen-0_2_0.repo = "nim-passgen";
  inputs.src-passgen-0_2_0.ref = "refs/tags/0.2.0";
  
  
  inputs."nimcrypto".type = "github";
  inputs."nimcrypto".owner = "riinr";
  inputs."nimcrypto".repo = "flake-nimble";
  inputs."nimcrypto".ref = "flake-pinning";
  inputs."nimcrypto".dir = "nimpkgs/n/nimcrypto";

  outputs = { self, nixpkgs, src-passgen-0_2_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-passgen-0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-passgen-0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}