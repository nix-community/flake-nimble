{
  description = ''make anything async [to be honest, fake async]'';
  inputs.src-asyncanything-main.flake = false;
  inputs.src-asyncanything-main.type = "github";
  inputs.src-asyncanything-main.owner = "hamidb80";
  inputs.src-asyncanything-main.repo = "asyncanything";
  inputs.src-asyncanything-main.ref = "refs/heads/main";
  
  outputs = { self, nixpkgs, src-asyncanything-main, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-asyncanything-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-asyncanything-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}