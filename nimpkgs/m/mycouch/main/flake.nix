{
  description = ''a couchDB client written in Nim'';
  inputs.src-mycouch-main.flake = false;
  inputs.src-mycouch-main.type = "github";
  inputs.src-mycouch-main.owner = "hamidb80";
  inputs.src-mycouch-main.repo = "mycouch";
  inputs.src-mycouch-main.ref = "refs/heads/main";
  
  outputs = { self, nixpkgs, src-mycouch-main, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-mycouch-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-mycouch-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}