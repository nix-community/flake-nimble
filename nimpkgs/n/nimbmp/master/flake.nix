{
  description = ''BMP encoder and decoder'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-nimBMP-master.flake = false;
  inputs.src-nimBMP-master.type = "github";
  inputs.src-nimBMP-master.owner = "jangko";
  inputs.src-nimBMP-master.repo = "nimBMP";
  inputs.src-nimBMP-master.ref = "refs/heads/master";
  inputs.src-nimBMP-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimBMP-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimBMP-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimBMP-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}