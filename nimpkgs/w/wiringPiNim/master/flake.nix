{
  description = ''Wrapper that implements some of wiringPi's function for controlling a Raspberry Pi'';
  inputs.src-wiringPiNim-master.flake = false;
  inputs.src-wiringPiNim-master.type = "github";
  inputs.src-wiringPiNim-master.owner = "ThomasTJdev";
  inputs.src-wiringPiNim-master.repo = "nim_wiringPiNim";
  inputs.src-wiringPiNim-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-wiringPiNim-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-wiringPiNim-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-wiringPiNim-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}