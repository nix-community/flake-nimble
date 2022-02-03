{
  description = ''dialect of Markdown in pure Nim with focus on HTML output'';
  inputs.src-marggers-master.flake = false;
  inputs.src-marggers-master.type = "github";
  inputs.src-marggers-master.owner = "metagn";
  inputs.src-marggers-master.repo = "marggers";
  inputs.src-marggers-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-marggers-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-marggers-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-marggers-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}