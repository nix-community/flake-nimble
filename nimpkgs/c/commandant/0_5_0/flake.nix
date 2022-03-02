{
  description = ''Commandant is a simple to use library for parsing command line arguments. Commandant is ideal for writing terminal applications, with  support for flags, options, subcommands, and custom exit options.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-commandant-0_5_0.flake = false;
  inputs.src-commandant-0_5_0.type = "github";
  inputs.src-commandant-0_5_0.owner = "casey-SK";
  inputs.src-commandant-0_5_0.repo = "commandant";
  inputs.src-commandant-0_5_0.ref = "refs/tags/0.5.0";
  inputs.src-commandant-0_5_0.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-commandant-0_5_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-commandant-0_5_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-commandant-0_5_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}