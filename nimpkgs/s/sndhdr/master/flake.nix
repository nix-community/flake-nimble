{
  description = ''Library for detecting the format of a sound file'';
  inputs.src-sndhdr-master.flake = false;
  inputs.src-sndhdr-master.type = "github";
  inputs.src-sndhdr-master.owner = "achesak";
  inputs.src-sndhdr-master.repo = "nim-sndhdr";
  inputs.src-sndhdr-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-sndhdr-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sndhdr-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-sndhdr-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}