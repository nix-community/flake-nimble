{
  description = ''Wrapper that implements some of wiringPi's function for controlling a Raspberry Pi'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-wiringpinim-master.flake = false;
  inputs.src-wiringpinim-master.type = "github";
  inputs.src-wiringpinim-master.owner = "ThomasTJdev";
  inputs.src-wiringpinim-master.repo = "nim_wiringPiNim";
  inputs.src-wiringpinim-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-wiringpinim-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-wiringpinim-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-wiringpinim-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}