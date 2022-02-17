{
  description = ''Indie assembler/linker for Android's Dalvik VM .dex & .apk files'';
  inputs.src-dali-v0_2_2.flake = false;
  inputs.src-dali-v0_2_2.type = "github";
  inputs.src-dali-v0_2_2.owner = "akavel";
  inputs.src-dali-v0_2_2.repo = "dali";
  inputs.src-dali-v0_2_2.ref = "refs/tags/v0.2.2";
  
  
  inputs."patty".type = "github";
  inputs."patty".owner = "riinr";
  inputs."patty".repo = "flake-nimble";
  inputs."patty".ref = "flake-pinning";
  inputs."patty".dir = "nimpkgs/p/patty";

  outputs = { self, nixpkgs, src-dali-v0_2_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-dali-v0_2_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-dali-v0_2_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}