{
  description = ''Library for detecting the format of an image'';
  inputs.src-imghdr-master.flake = false;
  inputs.src-imghdr-master.type = "github";
  inputs.src-imghdr-master.owner = "achesak";
  inputs.src-imghdr-master.repo = "nim-imghdr";
  inputs.src-imghdr-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-imghdr-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-imghdr-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-imghdr-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}