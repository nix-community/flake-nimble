{
  description = ''System libraries for the Genode Operating System Framework'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-genode-v19_05.flake = false;
  inputs.src-genode-v19_05.type = "other";
  inputs.src-genode-v19_05.owner = "~ehmry";
  inputs.src-genode-v19_05.repo = "nim_genode";
  inputs.src-genode-v19_05.ref = "refs/tags/v19.05";
  inputs.src-genode-v19_05.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-genode-v19_05, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-genode-v19_05;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-genode-v19_05"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}