{
  description = ''A pure nim port of the open simplex noise algorithm from Kurt Spencer'';
  inputs.src-opensimplexnoise-main.flake = false;
  inputs.src-opensimplexnoise-main.type = "github";
  inputs.src-opensimplexnoise-main.owner = "betofloresbaca";
  inputs.src-opensimplexnoise-main.repo = "nim-opensimplexnoise";
  inputs.src-opensimplexnoise-main.ref = "refs/heads/main";
  
  outputs = { self, nixpkgs, src-opensimplexnoise-main, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-opensimplexnoise-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-opensimplexnoise-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}