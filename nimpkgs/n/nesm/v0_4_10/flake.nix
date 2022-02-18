{
  description = ''A macro for generating [de]serializers for given objects'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nesm-v0_4_10.flake = false;
  inputs.src-nesm-v0_4_10.type = "gitlab";
  inputs.src-nesm-v0_4_10.owner = "xomachine";
  inputs.src-nesm-v0_4_10.repo = "NESM";
  inputs.src-nesm-v0_4_10.ref = "refs/tags/v0.4.10";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nesm-v0_4_10, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nesm-v0_4_10;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nesm-v0_4_10"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}