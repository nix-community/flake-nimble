{
  description = ''Bindings for libsoundio'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-soundio-master.flake = false;
  inputs.src-soundio-master.type = "github";
  inputs.src-soundio-master.owner = "ul";
  inputs.src-soundio-master.repo = "soundio";
  inputs.src-soundio-master.ref = "refs/heads/master";
  inputs.src-soundio-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-soundio-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-soundio-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-soundio-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}