{
  description = ''A wrapper for the zip library'';
  inputs.src-zip-master.flake = false;
  inputs.src-zip-master.type = "github";
  inputs.src-zip-master.owner = "nim-lang";
  inputs.src-zip-master.repo = "zip";
  inputs.src-zip-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-zip-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-zip-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-zip-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}