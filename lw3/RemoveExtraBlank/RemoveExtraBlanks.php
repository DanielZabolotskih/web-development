<?php
    $text = isset($_GET['text']) ? $_GET['text'] : null;
    
    if ($text !== null)
    {
        $currChar = '';
        $oldChar = '';
        $printedChar = '';
        
        for ($i = 0; $i < strlen($text); $i++)
        { 
            $oldChar = $currChar;
            $currChar = $text[$i];

            if ($currChar !== ' ')
            {
                $printedChar = $currChar;
                echo $printedChar;
            }
            
            if ($currChar === ' ' and $oldChar !== ' ' and $printedChar !== ' ')
            {
                $printedChar = ' ';
                echo $printedChar;
            }
        }
    }   