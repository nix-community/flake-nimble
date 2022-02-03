{
  description = ''BMP encoder and decoder'';
  inputs.src-nimBMP-master.flake = false;
  inputs.src-nimBMP-master.type = "github";
  inputs.src-nimBMP-master.owner = "jangko";
  inputs.src-nimBMP-master.repo = "nimBMP";
  inputs.src-nimBMP-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-nimBMP-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimBMP-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimBMP-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}