{
  description = ''A command line interface for shortening URLs with ZWS instances'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-zws-v1_1_1.flake = false;
  inputs.src-zws-v1_1_1.type = "github";
  inputs.src-zws-v1_1_1.owner = "zws-im";
  inputs.src-zws-v1_1_1.repo = "cli";
  inputs.src-zws-v1_1_1.ref = "refs/tags/v1.1.1";
  inputs.src-zws-v1_1_1.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-zws-v1_1_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-zws-v1_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-zws-v1_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}