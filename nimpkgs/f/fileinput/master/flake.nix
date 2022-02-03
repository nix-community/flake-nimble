{
  description = ''iterate through files and lines'';
  inputs.src-fileinput-master.flake = false;
  inputs.src-fileinput-master.type = "github";
  inputs.src-fileinput-master.owner = "achesak";
  inputs.src-fileinput-master.repo = "nim-fileinput";
  inputs.src-fileinput-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-fileinput-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-fileinput-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-fileinput-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}