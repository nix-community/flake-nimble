{
  description = ''tool to generate installers for Nim programs'';
  inputs.src-niminst-master.flake = false;
  inputs.src-niminst-master.type = "github";
  inputs.src-niminst-master.owner = "nim-lang";
  inputs.src-niminst-master.repo = "niminst";
  inputs.src-niminst-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-niminst-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-niminst-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-niminst-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}