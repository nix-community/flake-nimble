{
  description = ''Pastebin API wrapper'';
  inputs.src-pastebin-master.flake = false;
  inputs.src-pastebin-master.type = "github";
  inputs.src-pastebin-master.owner = "achesak";
  inputs.src-pastebin-master.repo = "nim-pastebin";
  inputs.src-pastebin-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-pastebin-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pastebin-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-pastebin-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}