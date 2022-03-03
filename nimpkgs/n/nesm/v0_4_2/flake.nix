{
  description = ''A macro for generating [de]serializers for given objects'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nesm-v0_4_2.flake = false;
  inputs.src-nesm-v0_4_2.type = "gitlab";
  inputs.src-nesm-v0_4_2.owner = "xomachine";
  inputs.src-nesm-v0_4_2.repo = "NESM";
  inputs.src-nesm-v0_4_2.ref = "refs/tags/v0.4.2";
  inputs.src-nesm-v0_4_2.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nesm-v0_4_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nesm-v0_4_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nesm-v0_4_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}