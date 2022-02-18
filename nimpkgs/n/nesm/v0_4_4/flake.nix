{
  description = ''A macro for generating [de]serializers for given objects'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nesm-v0_4_4.flake = false;
  inputs.src-nesm-v0_4_4.type = "gitlab";
  inputs.src-nesm-v0_4_4.owner = "xomachine";
  inputs.src-nesm-v0_4_4.repo = "NESM";
  inputs.src-nesm-v0_4_4.ref = "refs/tags/v0.4.4";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nesm-v0_4_4, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nesm-v0_4_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nesm-v0_4_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}