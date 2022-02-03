{
  description = ''A URL shortener cli app. using bit.ly'';
  inputs.src-urlshortener-master.flake = false;
  inputs.src-urlshortener-master.type = "github";
  inputs.src-urlshortener-master.owner = "jabbalaci";
  inputs.src-urlshortener-master.repo = "UrlShortener";
  inputs.src-urlshortener-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-urlshortener-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-urlshortener-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-urlshortener-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}