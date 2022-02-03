{
  description = ''A Beautiful Markdown Parser in the Nim World.'';
  inputs.src-markdown-master.flake = false;
  inputs.src-markdown-master.type = "github";
  inputs.src-markdown-master.owner = "soasme";
  inputs.src-markdown-master.repo = "nim-markdown";
  inputs.src-markdown-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-markdown-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-markdown-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-markdown-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}