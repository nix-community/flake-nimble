{
  description = ''Indie assembler/linker for Android's Dalvik VM .dex & .apk files'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-dali-master.flake = false;
  inputs.src-dali-master.type = "github";
  inputs.src-dali-master.owner = "akavel";
  inputs.src-dali-master.repo = "dali";
  inputs.src-dali-master.ref = "refs/heads/master";
  inputs.src-dali-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."patty".type = "github";
  # inputs."patty".owner = "riinr";
  # inputs."patty".repo = "flake-nimble";
  # inputs."patty".ref = "flake-pinning";
  # inputs."patty".dir = "nimpkgs/p/patty";
  # inputs."patty".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."patty".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-dali-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-dali-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-dali-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}