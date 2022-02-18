{
  description = ''Indie assembler/linker for Android's Dalvik VM .dex & .apk files'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-dali-v0_2_3.flake = false;
  inputs.src-dali-v0_2_3.type = "github";
  inputs.src-dali-v0_2_3.owner = "akavel";
  inputs.src-dali-v0_2_3.repo = "dali";
  inputs.src-dali-v0_2_3.ref = "refs/tags/v0.2.3";
  
  
  inputs."patty".type = "github";
  inputs."patty".owner = "riinr";
  inputs."patty".repo = "flake-nimble";
  inputs."patty".ref = "flake-pinning";
  inputs."patty".dir = "nimpkgs/p/patty";

  outputs = { self, nixpkgs, flakeNimbleLib, src-dali-v0_2_3, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-dali-v0_2_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-dali-v0_2_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}