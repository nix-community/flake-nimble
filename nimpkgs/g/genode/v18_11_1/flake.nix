{
  description = ''System libraries for the Genode Operating System Framework'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-genode-v18_11_1.flake = false;
  inputs.src-genode-v18_11_1.type = "other";
  inputs.src-genode-v18_11_1.owner = "~ehmry";
  inputs.src-genode-v18_11_1.repo = "nim_genode";
  inputs.src-genode-v18_11_1.ref = "refs/tags/v18.11.1";
  inputs.src-genode-v18_11_1.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-genode-v18_11_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-genode-v18_11_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-genode-v18_11_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}