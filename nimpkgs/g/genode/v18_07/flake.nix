{
  description = ''System libraries for the Genode Operating System Framework'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-genode-v18_07.flake = false;
  inputs.src-genode-v18_07.type = "other";
  inputs.src-genode-v18_07.owner = "~ehmry";
  inputs.src-genode-v18_07.repo = "nim_genode";
  inputs.src-genode-v18_07.ref = "refs/tags/v18.07";
  inputs.src-genode-v18_07.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-genode-v18_07, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-genode-v18_07;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-genode-v18_07"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}