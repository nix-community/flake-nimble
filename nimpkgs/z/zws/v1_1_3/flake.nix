{
  description = ''A command line interface for shortening URLs with ZWS instances'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-zws-v1_1_3.flake = false;
  inputs.src-zws-v1_1_3.type = "github";
  inputs.src-zws-v1_1_3.owner = "zws-im";
  inputs.src-zws-v1_1_3.repo = "cli";
  inputs.src-zws-v1_1_3.ref = "refs/tags/v1.1.3";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-zws-v1_1_3, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-zws-v1_1_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-zws-v1_1_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}