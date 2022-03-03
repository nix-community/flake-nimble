{
  description = ''System libraries for the Genode Operating System Framework'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-genode-v18_11_0.flake = false;
  inputs.src-genode-v18_11_0.type = "other";
  inputs.src-genode-v18_11_0.owner = "~ehmry";
  inputs.src-genode-v18_11_0.repo = "nim_genode";
  inputs.src-genode-v18_11_0.ref = "refs/tags/v18.11.0";
  inputs.src-genode-v18_11_0.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-genode-v18_11_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-genode-v18_11_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-genode-v18_11_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}