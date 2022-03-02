{
  description = ''System libraries for the Genode Operating System Framework'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-genode-v20_11.flake = false;
  inputs.src-genode-v20_11.type = "other";
  inputs.src-genode-v20_11.owner = "~ehmry";
  inputs.src-genode-v20_11.repo = "nim_genode";
  inputs.src-genode-v20_11.ref = "refs/tags/v20.11";
  inputs.src-genode-v20_11.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-genode-v20_11, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-genode-v20_11;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-genode-v20_11"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}