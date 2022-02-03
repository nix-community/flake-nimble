{
  description = ''Indie assembler/linker for Android's Dalvik VM .dex & .apk files'';
  inputs.src-dali-master.flake = false;
  inputs.src-dali-master.type = "github";
  inputs.src-dali-master.owner = "akavel";
  inputs.src-dali-master.repo = "dali";
  inputs.src-dali-master.ref = "refs/heads/master";
  
  
  inputs."patty".url = "path:../../../p/patty";
  inputs."patty".type = "github";
  inputs."patty".owner = "riinr";
  inputs."patty".repo = "flake-nimble";
  inputs."patty".ref = "flake-pinning";
  inputs."patty".dir = "nimpkgs/p/patty";

  outputs = { self, nixpkgs, src-dali-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-dali-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-dali-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}