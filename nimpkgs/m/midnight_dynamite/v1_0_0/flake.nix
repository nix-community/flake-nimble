{
  description = ''Wrapper for the markdown rendering hoedown library'';
  inputs.src-midnight_dynamite-v1_0_0.flake = false;
  inputs.src-midnight_dynamite-v1_0_0.type = "github";
  inputs.src-midnight_dynamite-v1_0_0.owner = "Araq";
  inputs.src-midnight_dynamite-v1_0_0.repo = "midnight_dynamite";
  inputs.src-midnight_dynamite-v1_0_0.ref = "refs/tags/v1.0.0";
  
  
  inputs."nake".type = "github";
  inputs."nake".owner = "riinr";
  inputs."nake".repo = "flake-nimble";
  inputs."nake".ref = "flake-pinning";
  inputs."nake".dir = "nimpkgs/n/nake";

  
  inputs."argument_parser".type = "github";
  inputs."argument_parser".owner = "riinr";
  inputs."argument_parser".repo = "flake-nimble";
  inputs."argument_parser".ref = "flake-pinning";
  inputs."argument_parser".dir = "nimpkgs/a/argument_parser";

  
  inputs."https://github.com/gradha/badger_bits.git".type = "github";
  inputs."https://github.com/gradha/badger_bits.git".owner = "riinr";
  inputs."https://github.com/gradha/badger_bits.git".repo = "flake-nimble";
  inputs."https://github.com/gradha/badger_bits.git".ref = "flake-pinning";
  inputs."https://github.com/gradha/badger_bits.git".dir = "nimpkgs/h/https://github.com/gradha/badger_bits.git";

  outputs = { self, nixpkgs, src-midnight_dynamite-v1_0_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-midnight_dynamite-v1_0_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-midnight_dynamite-v1_0_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}