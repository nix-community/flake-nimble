{
  description = ''Game framework, modular and extensible'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-c4-master.flake = false;
  inputs.src-c4-master.type = "github";
  inputs.src-c4-master.owner = "c0ntribut0r";
  inputs.src-c4-master.repo = "cat-400";
  inputs.src-c4-master.ref = "refs/heads/master";
  
  
  inputs."msgpack4nim".type = "github";
  inputs."msgpack4nim".owner = "riinr";
  inputs."msgpack4nim".repo = "flake-nimble";
  inputs."msgpack4nim".ref = "flake-pinning";
  inputs."msgpack4nim".dir = "nimpkgs/m/msgpack4nim";

  outputs = { self, nixpkgs, flakeNimbleLib, src-c4-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-c4-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-c4-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}