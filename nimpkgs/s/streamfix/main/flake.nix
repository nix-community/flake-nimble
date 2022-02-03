{
  description = ''FIX Protocol streaming parser (Financial Information eXchange)'';
  inputs.src-streamfix-main.flake = false;
  inputs.src-streamfix-main.type = "github";
  inputs.src-streamfix-main.owner = "inv2004";
  inputs.src-streamfix-main.repo = "streamfix";
  inputs.src-streamfix-main.ref = "refs/heads/main";
  
  outputs = { self, nixpkgs, src-streamfix-main, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-streamfix-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-streamfix-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}