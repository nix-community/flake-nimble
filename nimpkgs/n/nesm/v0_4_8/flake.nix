{
  description = ''A macro for generating [de]serializers for given objects'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nesm-v0_4_8.flake = false;
  inputs.src-nesm-v0_4_8.type = "gitlab";
  inputs.src-nesm-v0_4_8.owner = "xomachine";
  inputs.src-nesm-v0_4_8.repo = "NESM";
  inputs.src-nesm-v0_4_8.ref = "refs/tags/v0.4.8";
  inputs.src-nesm-v0_4_8.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nesm-v0_4_8, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nesm-v0_4_8;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nesm-v0_4_8"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}