{
  description = ''System libraries for the Genode Operating System Framework'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-genode-v18_08.flake = false;
  inputs.src-genode-v18_08.type = "other";
  inputs.src-genode-v18_08.owner = "~ehmry";
  inputs.src-genode-v18_08.repo = "nim_genode";
  inputs.src-genode-v18_08.ref = "refs/tags/v18.08";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-genode-v18_08, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-genode-v18_08;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-genode-v18_08"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}