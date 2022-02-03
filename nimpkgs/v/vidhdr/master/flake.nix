{
  description = ''Library for detecting the format of an video file'';
  inputs.src-vidhdr-master.flake = false;
  inputs.src-vidhdr-master.type = "github";
  inputs.src-vidhdr-master.owner = "achesak";
  inputs.src-vidhdr-master.repo = "nim-vidhdr";
  inputs.src-vidhdr-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-vidhdr-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-vidhdr-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-vidhdr-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}