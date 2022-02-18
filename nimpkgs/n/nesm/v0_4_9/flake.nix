{
  description = ''A macro for generating [de]serializers for given objects'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nesm-v0_4_9.flake = false;
  inputs.src-nesm-v0_4_9.type = "gitlab";
  inputs.src-nesm-v0_4_9.owner = "xomachine";
  inputs.src-nesm-v0_4_9.repo = "NESM";
  inputs.src-nesm-v0_4_9.ref = "refs/tags/v0.4.9";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nesm-v0_4_9, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nesm-v0_4_9;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nesm-v0_4_9"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}